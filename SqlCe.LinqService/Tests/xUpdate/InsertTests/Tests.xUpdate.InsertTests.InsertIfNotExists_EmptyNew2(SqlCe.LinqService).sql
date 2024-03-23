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
DECLARE @Id Int -- Int32
SET     @Id = 1

SELECT
	1 as [c1]
FROM
	[test_insert_or_replace] [t1]
WHERE
	[t1].[id] = @Id

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'test'

INSERT INTO [test_insert_or_replace]
(
	[id],
	[name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1

SELECT
	1 as [c1]
FROM
	[test_insert_or_replace] [t1]
WHERE
	[t1].[id] = @Id

BeforeExecute
-- SqlCe

DROP TABLE [test_insert_or_replace]

