-- Informix.DB2 Informix
DECLARE @id Char(36) -- StringFixedLength
SET     @id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO Issue1363
(
	required_field,
	optional_field
)
VALUES
(
	@id,
	(
		SELECT
			t1.required_field
		FROM
			Issue1363 t1
		WHERE
			1 = 0
	)
)

-- Informix.DB2 Informix
DECLARE @id Char(36) -- StringFixedLength
SET     @id = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @testId Char(36) -- StringFixedLength
SET     @testId = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO Issue1363
(
	required_field,
	optional_field
)
VALUES
(
	@id,
	(
		SELECT
			t1.required_field
		FROM
			Issue1363 t1
		WHERE
			t1.required_field = @testId
	)
)

-- Informix.DB2 Informix
DECLARE @id2 Char(36) -- StringFixedLength
SET     @id2 = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT FIRST 2
	t1.required_field,
	t1.optional_field
FROM
	Issue1363 t1
WHERE
	t1.required_field = @id2

