BeforeExecute
-- SqlCe

DROP TABLE [test_insert_or_replace]

BeforeExecute
-- SqlCe

CREATE TABLE [test_insert_or_replace]
(
	[id]         Int           NOT NULL,
	[name]       NVarChar(255)     NULL,
	[created_by] NVarChar(255)     NULL,
	[updated_by] NVarChar(255)     NULL,

	CONSTRAINT [PK_test_insert_or_replace] PRIMARY KEY ([id])
)

BeforeExecute
-- SqlCe

SELECT
	1 as [c1]
FROM
	[test_insert_or_replace] [t1]
WHERE
	[t1].[id] = 1

BeforeExecute
-- SqlCe

INSERT INTO [test_insert_or_replace]
(
	[id],
	[name]
)
VALUES
(
	1,
	'test'
)

BeforeExecute
-- SqlCe

SELECT
	1 as [c1]
FROM
	[test_insert_or_replace] [t1]
WHERE
	[t1].[id] = 1

BeforeExecute
-- SqlCe

DROP TABLE [test_insert_or_replace]

