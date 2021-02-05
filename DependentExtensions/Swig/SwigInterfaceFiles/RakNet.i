//
// This file was taken from RakNet 4.082.
// Please see licenses/RakNet license.txt for the underlying license and related copyright.
//
//
//
// Modified work: Copyright (c) 2018, SLikeSoft UG (haftungsbeschränkt)
//
// This source code was modified by SLikeSoft. Modifications are licensed under the MIT-style
// license found in the license.txt file in the root directory of this source tree.


//This is the main file that puts everything together, large sections are put into thier own file
//Smaller sections are placed directly in this file

#ifdef RAKNET_COMPATIBILITY
#define SLNet RakNet
#define SLikeNet RakNet
#define SLikeNetPINVOKE RakNetPINVOKE
%module(directors="1") RakNet
#else
%module(directors="1") SLikeNet
#endif


#define UNICODE
%{
#define UNICODE
%}
%include "various.i"
%include "typemaps.i"
%include "arrays_java.i"
//%include "Utils.i"

%typemap(jni) char *NIOBUFFER "jobject"  
%typemap(jtype) char *NIOBUFFER "java.nio.ByteBuffer"  
%typemap(jstype) char *NIOBUFFER "java.nio.ByteBuffer"  
%typemap(javain,
  pre="  assert $javainput.isDirect() : \"Buffer must be allocated direct.\";") char *NIOBUFFER "$javainput"
%typemap(javaout) char *NIOBUFFER {  
  return $jnicall;  
}  
%typemap(in) char *NIOBUFFER {  
  $1 = (char *) JCALL1(GetDirectBufferAddress, jenv, $input); 
  if ($1 == NULL) {  
    SWIG_JavaThrowException(jenv, SWIG_JavaRuntimeException, "Unable to get address of a java.nio.ByteBuffer direct byte buffer. Buffer must be a direct buffer and not a non-direct buffer.");  
  }  
}  
%typemap(memberin) char *NIOBUFFER {  
  if ($input) {  
    $1 = $input;  
  } else {  
    $1 = 0;  
  }  
}  
%typemap(freearg) char *NIOBUFFER ""  

typedef unsigned int       uint32_t;
namespace SLNet {

    class Packet;
		%typemap(out) unsigned char *NIOBUFFER { $result = JCALL2(NewDirectByteBuffer, jenv, $1, arg1->length); };
		%apply unsigned char *NIOBUFFER { unsigned char *data };

		
		
	class RakPeerInterface;
		%apply char *NIOBUFFER { const char *data };
		%apply uint32_t { int };
	
	
	//%typemap(in) (const char *data, const int length) {
	//	$1 = (char *) JCALL2(GetByteArrayElements, jenv, $input, 0); 
	//	$2 = (int) JCALL1(GetArrayLength, jenv, $input); 
	//}
}

%include "JavaTypeMaps.i"
%include "RakNetCSharpCPlusIncludes.i"
%include "RakNetCSharpIgnores.i"
%include "RakNetCSharpSwigIncludes.i"
%include "RakNetCSharpTemplateDefines.i"

