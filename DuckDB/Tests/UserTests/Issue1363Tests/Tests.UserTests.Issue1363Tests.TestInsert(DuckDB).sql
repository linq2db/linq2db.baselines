-- DuckDB
DECLARE $id  -- Guid
SET     $id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::UUID

INSERT INTO Issue1363
(
	required_field,
	optional_field
)
VALUES
(
	$id,
	(
		SELECT
			t1.required_field
		FROM
			Issue1363 t1
		WHERE
			1 = 0
	)
)

-- DuckDB
DECLARE $id  -- Guid
SET     $id = 'a948600d-de21-4f74-8ac2-9516b287076e'::UUID
DECLARE $testId  -- Guid
SET     $testId = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::UUID

INSERT INTO Issue1363
(
	required_field,
	optional_field
)
VALUES
(
	$id,
	(
		SELECT
			t1.required_field
		FROM
			Issue1363 t1
		WHERE
			t1.required_field = $testId
	)
)

-- DuckDB
DECLARE $id2  -- Guid
SET     $id2 = 'a948600d-de21-4f74-8ac2-9516b287076e'::UUID

SELECT
	t1.required_field,
	t1.optional_field
FROM
	Issue1363 t1
WHERE
	t1.required_field = $id2
LIMIT 2

