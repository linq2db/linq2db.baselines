BeforeExecute
-- SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TestMerge1] [t1]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TestMerge2] [t1]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

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
	[Id],
	[FieldInt32],
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
ON ([Target].[Id] = [Source].[Id])

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
	[Source].[Id],
	[Source].[FieldInt32],
	[Source].[FieldInt64],
	[Source].[FieldBoolean],
	[Source].[FieldString],
	[Source].[FieldNString],
	[Source].[FieldChar],
	[Source].[FieldNChar],
	[Source].[FieldFloat],
	[Source].[FieldDouble],
	[Source].[FieldDateTime],
	[Source].[FieldDateTime2],
	[Source].[FieldBinary],
	[Source].[FieldGuid],
	[Source].[FieldDecimal],
	[Source].[FieldDate],
	[Source].[FieldTime],
	[Source].[FieldEnumString],
	[Source].[FieldEnumNumber]
)
;

BeforeExecute
-- SqlServer.2025 SqlServer.2022

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
	[Id],
	[FieldInt32],
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
ON ([Target].[Id] = [Source].[Id])

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
	[Source].[Id],
	[Source].[FieldInt32],
	[Source].[FieldInt64],
	[Source].[FieldBoolean],
	[Source].[FieldString],
	[Source].[FieldNString],
	[Source].[FieldChar],
	[Source].[FieldNChar],
	[Source].[FieldFloat],
	[Source].[FieldDouble],
	[Source].[FieldDateTime],
	[Source].[FieldDateTime2],
	[Source].[FieldBinary],
	[Source].[FieldGuid],
	[Source].[FieldDecimal],
	[Source].[FieldDate],
	[Source].[FieldTime],
	[Source].[FieldEnumString],
	[Source].[FieldEnumNumber]
)
;

BeforeExecute
-- SqlServer.2025 SqlServer.2022

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
-- SqlServer.2025 SqlServer.2022

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

