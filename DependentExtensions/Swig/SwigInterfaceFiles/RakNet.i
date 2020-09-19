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

%include "various.i"
%include "arrays_java.i"

%include "JavaTypeMaps.i"
%include "RakNetCSharpCPlusIncludes.i"
%include "RakNetCSharpIgnores.i"
%include "RakNetCSharpSwigIncludes.i"
%include "RakNetCSharpTemplateDefines.i"
