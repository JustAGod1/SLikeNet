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

//----------------------------Method modifiers---------------------
//These modify the method types by default it uses just publix x, here you can specify ovverideds private functions
//and such. Many times this is used to hide the helper functions from the user

//BitStream
%javamethodmodifiers SLNet::BitStream::CSharpStringReader "private"
%javamethodmodifiers SLNet::BitStream::CSharpStringReaderCompressedDelta "private"
%javamethodmodifiers SLNet::BitStream::CSharpStringReaderCompressed "private"
%javamethodmodifiers SLNet::BitStream::CSharpStringReaderDelta "private"
%javamethodmodifiers SLNet::BitStream::CSharpByteReader(unsigned char* inOutByteArray,unsigned int numberOfBytes) "private"
%javamethodmodifiers SLNet::BitStream::CSharpCopyDataHelper(unsigned char* inOutByteArray) "private"
%javamethodmodifiers SLNet::BitStream::CSharpPrintHexHelper(char * inString) "private"
%javamethodmodifiers SLNet::BitStream::CSharpPrintBitsHelper(char * inString) "private"

//DataStructures::Table
%javamethodmodifiers DataStructures::Table::GetListHeadHelper "private"
%javamethodmodifiers DataStructures::Table::SortTableHelper "private"
%javamethodmodifiers DataStructures::Table::GetCellValueByIndexHelper "private"
%javamethodmodifiers DataStructures::Table::QueryTableHelper "private"
%javamethodmodifiers DataStructures::Table::ColumnIndexHelper "private"
%javamethodmodifiers Cell::GetHelper "private"
%javamethodmodifiers Cell::ColumnIndexHelper "private"

//Rakpeer
%define RAKPEERANDINTERFACESETPRIVATE(theMacroInputFunction)
%javamethodmodifiers SLNet::RakPeer::theMacroInputFunction "private"
%javamethodmodifiers SLNet::RakPeerInterface::theMacroInputFunction "private"
%enddef

RAKPEERANDINTERFACESETPRIVATE(CSharpGetIncomingPasswordHelper( const char* passwordData, int *passwordDataLength  ))
RAKPEERANDINTERFACESETPRIVATE(CSharpGetOfflinePingResponseHelper( unsigned char *inOutByteArray, unsigned int *outLength ))
RAKPEERANDINTERFACESETPRIVATE(GetBandwidth);

%javamethodmodifiers SLNet::NetworkIDManager::GET_BASE_OBJECT_FROM_ID "protected"

%javamethodmodifiers SLNet::NetworkIDObject::SetNetworkIDManager "protected"

%javamethodmodifiers  DataStructures::ByteQueue::PeekContiguousBytesHelper "private"

%javamethodmodifiers SLNet::RakNetGUID::ToString() const "public override"

%javamethodmodifiers  SLNet::StatisticsToStringHelper "private"

%javamethodmodifiers SLNet::PacketLogger::FormatLineHelper "private"

%javamethodmodifiers DataStructures::List <unsigned short>::GetHelper "private"
%javamethodmodifiers DataStructures::List <unsigned short>::PopHelper "private"

//FileProgressStruct
%javamethodmodifiers FileProgressStruct::SetFirstDataChunk "private"
%javamethodmodifiers FileProgressStruct::SetIriDataChunk "private"
%javamethodmodifiers OnFileStruct::SetFileData "private"

//ConnectionGraph2
%javamethodmodifiers SLNet::ConnectionGraph2::GetConnectionListForRemoteSystemHelper "private"
%javamethodmodifiers SLNet::ConnectionGraph2::GetParticipantListHelper "private"

#ifdef SWIG_ADDITIONAL_AUTOPATCHER
	//AutopatcherServer
	%javamethodmodifiers SLNet::AutopatcherServer::StartThreadsHelper "private"

	%javamethodmodifiers  SLNet::CreatePatchHelper "private"
#endif

#ifdef SWIG_ADDITIONAL_AUTOPATCHER
	%javamethodmodifiers CompressorBase::GetOutputHelper "private";
#endif

//Operators
%javamethodmodifiers operator > "private"
%javamethodmodifiers operator < "private"
%javamethodmodifiers operator != "private"
%javamethodmodifiers operator [] "private"
%javamethodmodifiers operator >= "private"
%javamethodmodifiers operator <= "private"
%javamethodmodifiers operator / "private"
%javamethodmodifiers operator * "private"
%javamethodmodifiers operator -- "private"
%javamethodmodifiers operator ++ "private"
%javamethodmodifiers operator - "private"
%javamethodmodifiers operator + "private"
%javamethodmodifiers operator+(const SLNet::RakString &lhs, const SLNet::RakString &rhs) "public" //The global SLikeNet operator should be public
