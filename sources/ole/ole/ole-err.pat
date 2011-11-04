
! Use these patterns to convert "winerror.h" for use as "ole-err.dylan".
! Extracts the error codes pertaining to OLE and emits corresponding
! Dylan definitions for them.

! Copyright: 1996, 1997, 1998 Functional Objects, Inc.  All rights reserved.


@set-switch{line;1}
@set-switch{match;1}

\B=Module\:    OLE\n@copyright{\:}\n\
  \n\/\/ This file is automatically generated from @file\; do not edit.\n\n

! OLE error codes:

\N\#define <ole-error-name> <number>\W\n=\
	define inline-only constant @export{\$$1} @tab{38}\=\
	@wrap{\ as(\<machine-word\>, $2)}\;\n

! Preserve message text comments because some of these error codes are not
! documented anywhere other than in the header file.
\/\/ MessageId\: <ole-error-name>\W\n\/\/\n\/\/ MessageText\:\n\
	<message-text>\G\P\#define $1 <number>=\n$2

message-text:\/\/\W\n=
message-text:\/\/\W*\n=\/\/ *\n
message-text:=@terminate

ole-error-name:E_=@fail
ole-error-name:S_=@fail
ole-error-name:CO_=@fail
ole-error-name:MK_=@fail
ole-error-name:STG_<K1>_=@fail
ole-error-name:RPC_E_=@fail
ole-error-name:DISP_E_=@fail
ole-error-name:TYPE_E_=@fail
ole-error-name:REGDB_E_=@fail
ole-error-name:CLASS_E_=@fail
ole-error-name:NTE_=@fail
ole-error-name:CRYPT_E_=@fail
ole-error-name:CERTSRV_E_=@fail
ole-error-name:TRUST_E_=@fail
ole-error-name:DIGSIG_E_=@fail
ole-error-name:CERT_E_=@fail
ole-error-name:CERTDB_E_=@fail
ole-error-name:SPAPI_E_=@fail
ole-error-name:PERSIST_E_=@fail
ole-error-name:<A>_E_FIRST=@fail
ole-error-name:<A>_E_LAST=@fail
ole-error-name:<A>_E_<I>=$0@end
ole-error-name:=@fail

! OLE success codes:

\N\#define <ole-success-name> <number>\W\n=\
	define inline-only constant @export{\$$1} @tab{38}\=\
	@wrap{\ as(\<machine-word\>, $2)}\;\n

ole-success-name:CO_=@fail
ole-success-name:MK_=@fail
ole-success-name:STG_S_=@fail
ole-success-name:RPC_=@fail
ole-success-name:<A>_S_FIRST=@fail
ole-success-name:<A>_S_LAST=@fail
ole-success-name:<A>_S_<I>=$0@end
ole-success-name:=@fail

number:(<number>)=$1@end
number:0x<X8><optL>=\#x$1@end
!number:0<O><optL>=\#o$1@end
!number:<D><optL>=$1@end
number:_HRESULT_TYPEDEF_\W(<number>)=$1@end
number:(HRESULT)\W=
number:=@fail
optL:\CL=@end;=@end

\/\*<comment>\*\/=
comment:\/\*<comment>\*\/=
\/\/*\n=
