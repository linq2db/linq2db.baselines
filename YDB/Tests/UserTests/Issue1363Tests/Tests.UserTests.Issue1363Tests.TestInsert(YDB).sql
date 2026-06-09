-- YDB Ydb
DECLARE $id Uuid -- Guid
SET     $id = Uuid('bc7b663d-0fde-4327-8f92-5d8cc3a11d11')

$CTE_1 = 	SELECT
		t1.required_field as Optional
	FROM
		Issue1363 t1
	WHERE
		1 = 0
;
$CTE_2 = 	SELECT
		t1.required_field as Optional
	FROM
		Issue1363 t1
	WHERE
		1 = 0
;

INSERT INTO Issue1363
(
	required_field,
	optional_field
)
VALUES
(
	$id,
	$CTE_2
)

-- YDB Ydb
DECLARE $testId Uuid -- Guid
SET     $testId = Uuid('bc7b663d-0fde-4327-8f92-5d8cc3a11d11')
DECLARE $id Uuid -- Guid
SET     $id = Uuid('a948600d-de21-4f74-8ac2-9516b287076e')

$CTE_1 = 	SELECT
		t1.required_field as Optional
	FROM
		Issue1363 t1
	WHERE
		t1.required_field = $testId
;
$CTE_2 = 	SELECT
		t1.required_field as Optional
	FROM
		Issue1363 t1
	WHERE
		t1.required_field = $testId
;

INSERT INTO Issue1363
(
	required_field,
	optional_field
)
VALUES
(
	$id,
	$CTE_2
)

-- YDB Ydb
DECLARE $id2 Uuid -- Guid
SET     $id2 = Uuid('a948600d-de21-4f74-8ac2-9516b287076e')

SELECT
	t1.required_field as Required,
	t1.optional_field as Optional
FROM
	Issue1363 t1
WHERE
	t1.required_field = $id2
LIMIT 2

