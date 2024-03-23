BeforeExecute
-- SqlServer.2014

DELETE [t1]
FROM
	[TestMerge1] [t1]

BeforeExecute
-- SqlServer.2014

DELETE [t1]
FROM
	[TestMerge2] [t1]

BeforeExecute
-- SqlServer.2014

MERGE INTO [TestMerge1] [Target]
USING (VALUES
	(1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(2,-2147483647,-9223372036854775807,1,N'normal strinG',N'всЁ нормально',N'*',N'ё',-3.40282002E+38,-1.7976931348623157E+308,DATETIME2FROMPARTS(2000, 11, 12, 21, 14, 15, 1670000, 7),DATETIMEOFFSETFROMPARTS(2000, 11, 22, 13, 14, 15, 1244567, 0, 15, 7),0x,'00000000-0000-0000-0000-000000000000',12345678.9012345678,DATETIME2FROMPARTS(2000, 11, 23, 0, 0, 0, 0, 7),TIMEFROMPARTS(9, 44, 34, 6534321, 7),N'FIRST',NULL),
	(3,2147483647,9223372036854775807,0,N'test
	',N'ЙЦУКЩывапрм
q',N'&',N'>',3.40282002E+38,1.7976931348623157E+308,DATETIME2FROMPARTS(2001, 10, 12, 21, 14, 15, 1670000, 7),DATETIMEOFFSETFROMPARTS(2001, 11, 22, 13, 14, 15, 1234567, 0, -15, 7),0x000102030004,'ffffffff-ffff-ffff-ffff-ffffffffffff',-99999999.9999999999,DATETIME2FROMPARTS(2123, 11, 23, 0, 0, 0, 0, 7),TIMEFROMPARTS(0, 44, 34, 6414321, 7),char(0),0),
	(4,-123,987,NULL,N'`~!@#$%^&*()_+{}|[]\',N'<>?/.,;''щЩ":',N'',N'
',1.17549996E-38,-2.2250738585072014E-308,DATETIME2FROMPARTS(2098, 10, 12, 21, 14, 15, 9970000, 7),DATETIMEOFFSETFROMPARTS(2001, 11, 22, 13, 14, 16, 1224567, 1, 39, 7),0xFFC864321400,'ffffffff-ffff-ffff-ffff-ffffffffffff',99999999.9999999999,DATETIME2FROMPARTS(2110, 11, 23, 0, 0, 0, 0, 7),TIMEFROMPARTS(0, 0, 0, 0, 7),N'',2147483647)
) [Source]
(
	[source_Id],
	[source_FieldInt32],
	[source_FieldInt64],
	[source_FieldBoolean],
	[source_FieldString],
	[source_FieldNString],
	[source_FieldChar],
	[source_FieldNChar],
	[source_FieldFloat],
	[source_FieldDouble],
	[source_FieldDateTime],
	[source_FieldDateTime2],
	[source_FieldBinary],
	[source_FieldGuid],
	[source_FieldDecimal],
	[source_FieldDate],
	[source_FieldTime],
	[source_FieldEnumString],
	[source_FieldEnumNumber]
)
ON ([Target].[Id] = [Source].[source_Id])

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[Field1],
	[FieldInt64],
	[FieldBoolean],
	[FieldString],
	[FieldNString],
	[FieldChar],
	[FieldNChar],
	[FieldFloat],
	[FieldDouble],
	[FieldDateTime],
	[FieldDateTime2],
	[FieldBinary],
	[FieldGuid],
	[FieldDecimal],
	[FieldDate],
	[FieldTime],
	[FieldEnumString],
	[FieldEnumNumber]
)
VALUES
(
	[Source].[source_Id],
	[Source].[source_FieldInt32],
	[Source].[source_FieldInt64],
	[Source].[source_FieldBoolean],
	[Source].[source_FieldString],
	[Source].[source_FieldNString],
	[Source].[source_FieldChar],
	[Source].[source_FieldNChar],
	[Source].[source_FieldFloat],
	[Source].[source_FieldDouble],
	[Source].[source_FieldDateTime],
	[Source].[source_FieldDateTime2],
	[Source].[source_FieldBinary],
	[Source].[source_FieldGuid],
	[Source].[source_FieldDecimal],
	[Source].[source_FieldDate],
	[Source].[source_FieldTime],
	[Source].[source_FieldEnumString],
	[Source].[source_FieldEnumNumber]
)
;

BeforeExecute
-- SqlServer.2014

MERGE INTO [TestMerge2] [Target]
USING (VALUES
	(3,-123,987,NULL,N'<>?/.,;''zZ":',N'`~!@#$%^&*()_+{}|[]\',N'',N'',-1.17549996E-38,2.2250738585072014E-308,DATETIME2FROMPARTS(2098, 10, 12, 21, 14, 15, 9070000, 7),DATETIMEOFFSETFROMPARTS(2001, 11, 22, 13, 14, 14, 1233457, -1, -39, 7),0xFFC864321400,'ffffffff-ffff-ffff-ffff-ffffffffffff',-0.123,DATETIME2FROMPARTS(2111, 11, 23, 0, 0, 0, 0, 7),TIMEFROMPARTS(23, 59, 59, 9999999, 7),NULL,-2147483647),
	(4,2147483647,9223372036854775807,0,N'test
	',N'ЙЦУКЩывапрм
q',N'1',N' ',3.40282002E+38,1.7976931348623157E+308,DATETIME2FROMPARTS(2001, 10, 12, 21, 14, 15, 1670000, 7),DATETIMEOFFSETFROMPARTS(2001, 11, 22, 13, 14, 15, 3210000, 0, -15, 7),0x000102030004,'ffffffff-ffff-ffff-ffff-ffffffffffff',-99999999.9999999999,DATETIME2FROMPARTS(2123, 11, 23, 0, 0, 0, 0, 7),TIMEFROMPARTS(14, 44, 33, 2340000, 7),char(0),0),
	(5,-123,987,NULL,N'<>?/.,;''zZ":',N'`~!@#$%^&*()_+{}|[]\',N' ',N' ',-1.17549996E-38,2.2250738585072014E-308,DATETIME2FROMPARTS(2098, 10, 12, 21, 14, 15, 9130000, 7),DATETIMEOFFSETFROMPARTS(2001, 11, 22, 13, 14, 15, 0, -1, -39, 7),0xFFC864321400,'ffffffff-ffff-ffff-ffff-ffffffffffff',-0.123,DATETIME2FROMPARTS(2010, 11, 23, 0, 0, 0, 0, 7),TIMEFROMPARTS(23, 59, 59, 9999999, 7),NULL,-2147483647),
	(6,2147483647,9223372036854775807,0,N'test
	  ',N'ЙЦУКЩывапрм
q  ',N'-',N'~',3.40282002E+38,1.7976931348623157E+308,DATETIME2FROMPARTS(2001, 10, 12, 21, 14, 15, 1670000, 7),DATETIMEOFFSETFROMPARTS(2001, 11, 22, 13, 14, 15, 9990000, 0, -15, 7),0x000102030004,'ffffffff-ffff-ffff-ffff-ffffffffffff',-99999999.9999999999,DATETIME2FROMPARTS(2123, 11, 23, 0, 0, 0, 0, 7),TIMEFROMPARTS(22, 44, 33, 0, 7),char(0),0)
) [Source]
(
	[source_Id],
	[source_FieldInt32],
	[source_FieldInt64],
	[source_FieldBoolean],
	[source_FieldString],
	[source_FieldNString],
	[source_FieldChar],
	[source_FieldNChar],
	[source_FieldFloat],
	[source_FieldDouble],
	[source_FieldDateTime],
	[source_FieldDateTime2],
	[source_FieldBinary],
	[source_FieldGuid],
	[source_FieldDecimal],
	[source_FieldDate],
	[source_FieldTime],
	[source_FieldEnumString],
	[source_FieldEnumNumber]
)
ON ([Target].[Id] = [Source].[source_Id])

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[Field1],
	[FieldInt64],
	[FieldBoolean],
	[FieldString],
	[FieldNString],
	[FieldChar],
	[FieldNChar],
	[FieldFloat],
	[FieldDouble],
	[FieldDateTime],
	[FieldDateTime2],
	[FieldBinary],
	[FieldGuid],
	[FieldDecimal],
	[FieldDate],
	[FieldTime],
	[FieldEnumString],
	[FieldEnumNumber]
)
VALUES
(
	[Source].[source_Id],
	[Source].[source_FieldInt32],
	[Source].[source_FieldInt64],
	[Source].[source_FieldBoolean],
	[Source].[source_FieldString],
	[Source].[source_FieldNString],
	[Source].[source_FieldChar],
	[Source].[source_FieldNChar],
	[Source].[source_FieldFloat],
	[Source].[source_FieldDouble],
	[Source].[source_FieldDateTime],
	[Source].[source_FieldDateTime2],
	[Source].[source_FieldBinary],
	[Source].[source_FieldGuid],
	[Source].[source_FieldDecimal],
	[Source].[source_FieldDate],
	[Source].[source_FieldTime],
	[Source].[source_FieldEnumString],
	[Source].[source_FieldEnumNumber]
)
;

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Field1],
	[t1].[FieldInt64],
	[t1].[FieldBoolean],
	[t1].[FieldString],
	[t1].[FieldNString],
	[t1].[FieldChar],
	[t1].[FieldNChar],
	[t1].[FieldFloat],
	[t1].[FieldDouble],
	[t1].[FieldDateTime],
	[t1].[FieldDateTime2],
	[t1].[FieldBinary],
	[t1].[FieldGuid],
	[t1].[FieldDecimal],
	[t1].[FieldDate],
	[t1].[FieldTime],
	[t1].[FieldEnumString],
	[t1].[FieldEnumNumber]
FROM
	[TestMerge1] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Field1],
	[t1].[FieldInt64],
	[t1].[FieldBoolean],
	[t1].[FieldString],
	[t1].[FieldNString],
	[t1].[FieldChar],
	[t1].[FieldNChar],
	[t1].[FieldFloat],
	[t1].[FieldDouble],
	[t1].[FieldDateTime],
	[t1].[FieldDateTime2],
	[t1].[FieldBinary],
	[t1].[FieldGuid],
	[t1].[FieldDecimal],
	[t1].[FieldDate],
	[t1].[FieldTime],
	[t1].[FieldEnumString],
	[t1].[FieldEnumNumber]
FROM
	[TestMerge2] [t1]
ORDER BY
	[t1].[Id]

