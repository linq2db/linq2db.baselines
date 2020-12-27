BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[sample_class]', N'U') IS NOT NULL)
	DROP TABLE [sample_class]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[sample_class]', N'U') IS NULL)
	CREATE TABLE [sample_class]
	(
		[id]    Int          NOT NULL,
		[value] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(1,N'Str_1'),
(2,N'Str_2'),
(3,N'Str_3'),
(4,N'Str_4'),
(5,N'Str_5'),
(6,N'Str_6'),
(7,N'Str_7'),
(8,N'Str_8'),
(9,N'Str_9'),
(10,N'Str_10'),
(11,N'Str_11'),
(12,N'Str_12'),
(13,N'Str_13'),
(14,N'Str_14'),
(15,N'Str_15'),
(16,N'Str_16'),
(17,N'Str_17'),
(18,N'Str_18'),
(19,N'Str_19'),
(20,N'Str_20')

BeforeExecute
-- SqlServer.2017

CREATE TABLE [sample_other_class]
(
	[id]        Int          NOT NULL,
	[parent_id] Int          NOT NULL,
	[value]     NVarChar(50)     NULL
)

BeforeExecute
-- SqlServer.2017
DECLARE @idFilter Int -- Int32
SET     @idFilter = 1

SELECT
	[t].[id],
	[a_AssociatedOne].[id],
	[a_AssociatedOne].[parent_id],
	[a_AssociatedOne].[value]
FROM
	[sample_class] [t]
		OUTER APPLY (
			SELECT * FROM sample_other_class where parent_id = [t].[id] and id >= @idFilter
		) [a_AssociatedOne]

BeforeExecute
-- SqlServer.2017

DROP TABLE [sample_other_class]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[sample_class]', N'U') IS NOT NULL)
	DROP TABLE [sample_class]

