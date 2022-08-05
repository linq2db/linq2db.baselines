﻿BeforeExecute
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
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Test1'
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[test_insert_or_replace]
SET
	[test_insert_or_replace].[name] = @Name,
	[test_insert_or_replace].[updated_by] = @UpdatedBy
WHERE
	[test_insert_or_replace].[id] = @Id

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Test1'
DECLARE @CreatedBy NVarChar(10) -- String
SET     @CreatedBy = 'TEST_USER3'

INSERT INTO [test_insert_or_replace]
(
	[id],
	[name],
	[created_by]
)
VALUES
(
	@Id,
	@Name,
	@CreatedBy
)

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[t1].[id],
	[t1].[name],
	[t1].[created_by],
	[t1].[updated_by]
FROM
	[test_insert_or_replace] [t1]

BeforeExecute
-- SqlCe
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Test2'
DECLARE @UpdatedBy NVarChar(10) -- String
SET     @UpdatedBy = 'TEST_USER3'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[test_insert_or_replace]
SET
	[test_insert_or_replace].[name] = @Name,
	[test_insert_or_replace].[updated_by] = @UpdatedBy
WHERE
	[test_insert_or_replace].[id] = @Id

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[t1].[id],
	[t1].[name],
	[t1].[created_by],
	[t1].[updated_by]
FROM
	[test_insert_or_replace] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [test_insert_or_replace]

