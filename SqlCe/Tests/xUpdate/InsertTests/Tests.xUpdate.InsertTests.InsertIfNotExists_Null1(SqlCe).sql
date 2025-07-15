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

