BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[col1]    Int NOT NULL,
		[col2]    Int NOT NULL,
		[Column1] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Abcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefg Int -- Int32
SET     @Abcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefg = 2
DECLARE @Абвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеё Int -- Int32
SET     @Абвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеё = 3

UPDATE
	[t]
SET
	[t].[col1] = @Abcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefg,
	[t].[col2] = @Абвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеё
FROM
	[testparams] [t]
WHERE
	[t].[Column1] = 1

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [testparams]

