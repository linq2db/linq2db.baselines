BeforeExecute
-- SqlCe

DROP TABLE [testparams]

BeforeExecute
-- SqlCe

CREATE TABLE [testparams]
(
	[col1]    Int NOT NULL,
	[col2]    Int NOT NULL,
	[Column1] Int NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @Abcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefg Int -- Int32
SET     @Abcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefg = 2
DECLARE @Абвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеё Int -- Int32
SET     @Абвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеё = 3

UPDATE
	[testparams]
SET
	[testparams].[col1] = @Abcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefg,
	[testparams].[col2] = @Абвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеёжзиабвгдеё
WHERE
	[testparams].[Column1] = 1

BeforeExecute
-- SqlCe

DROP TABLE [testparams]

