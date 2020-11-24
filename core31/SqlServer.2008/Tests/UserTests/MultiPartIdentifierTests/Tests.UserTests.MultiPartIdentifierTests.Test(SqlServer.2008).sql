BeforeExecute
-- SqlServer.2008

CREATE TABLE [Table1]
(
	[Field1] BigInt NOT NULL,
	[Field2] BigInt NOT NULL,
	[Field3] Int        NULL
)

BeforeExecute
-- SqlServer.2008

CREATE TABLE [Table2]
(
	[Field2] BigInt NOT NULL,
	[Field4] Int    NOT NULL
)

BeforeExecute
-- SqlServer.2008

CREATE TABLE [Table3]
(
	[Field4] Int NOT NULL
)

BeforeExecute
-- SqlServer.2008

CREATE TABLE [Table4]
(
	[Field3] Int NOT NULL,
	[Field4] Int NOT NULL
)

BeforeExecute
-- SqlServer.2008

CREATE TABLE [Table5]
(
	[Field5]             Int     NULL,
	[ProblematicalField] Int NOT NULL
)

BeforeExecute
-- SqlServer.2008

SELECT
	[t11].[Field1]
FROM
	[Table5] [t1]
		INNER JOIN [Table4] [cp]
			INNER JOIN [Table1] [c_1]
				INNER JOIN [Table4] [a_Table4Ref]
					INNER JOIN [Table5] [a_Table5Ref] ON [a_Table4Ref].[Field4] = [a_Table5Ref].[ProblematicalField]
				ON [c_1].[Field3] = [a_Table4Ref].[Field3]
			ON [cp].[Field3] = [c_1].[Field3]
			INNER JOIN [Table5] [a_Table5Ref_1] ON [a_Table5Ref].[Field5] = [a_Table5Ref_1].[ProblematicalField]
			INNER JOIN [Table4] [t4] ON [a_Table5Ref_1].[ProblematicalField] = [t4].[Field4]
		ON [t1].[ProblematicalField] = [cp].[Field4]
		INNER JOIN [Table1] [t6] ON [t4].[Field3] = [t6].[Field3]
		INNER JOIN [Table5] [a_Table5Ref_2] ON [t1].[Field5] = [a_Table5Ref_2].[ProblematicalField]
		INNER JOIN [Table4] [cp_1]
			INNER JOIN [Table1] [c_2]
				INNER JOIN [Table2] [a_Table2Ref] ON [c_2].[Field2] = [a_Table2Ref].[Field2]
			ON [cp_1].[Field3] = [c_2].[Field3]
			INNER JOIN [Table3] [a_Table3Ref] ON [a_Table2Ref].[Field4] = [a_Table3Ref].[Field4]
			INNER JOIN [Table2] [t9] ON [a_Table3Ref].[Field4] = [t9].[Field4]
		ON [a_Table5Ref_2].[ProblematicalField] = [cp_1].[Field4]
		INNER JOIN [Table1] [t11] ON [t9].[Field2] = [t11].[Field2]
WHERE
	[t6].[Field1] = [t11].[Field1]

BeforeExecute
-- SqlServer.2008

DROP TABLE [Table5]

BeforeExecute
-- SqlServer.2008

DROP TABLE [Table4]

BeforeExecute
-- SqlServer.2008

DROP TABLE [Table3]

BeforeExecute
-- SqlServer.2008

DROP TABLE [Table2]

BeforeExecute
-- SqlServer.2008

DROP TABLE [Table1]

