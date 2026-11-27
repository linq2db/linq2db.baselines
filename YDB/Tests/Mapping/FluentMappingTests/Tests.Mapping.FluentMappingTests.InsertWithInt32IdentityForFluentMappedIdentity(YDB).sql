-- YDB Ydb
DECLARE Has Bool -- Boolean
SET     Has = true

INSERT INTO FluentIdentityClient
(
	Has
)
VALUES
(
	$Has
)
RETURNING
	Id

-- YDB Ydb
DECLARE id Int32
SET     id = 1

SELECT
	t1.Id as Id,
	t1.Has as Has
FROM
	FluentIdentityClient t1
WHERE
	t1.Id = $id
LIMIT 2

