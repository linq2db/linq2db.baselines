-- Informix.DB2 Informix

INSERT INTO Issue1373Tests
(
	Id,
	Field1
)
VALUES
(
	1,
	NULL
)

-- Informix.DB2 Informix

INSERT INTO Issue1373Tests
(
	Id,
	Field1
)
VALUES
(
	2,
	NULL
)

-- Informix.DB2 Informix

INSERT INTO Issue1373Tests
(
	Id,
	Field1
)
VALUES
(
	3,
	'test'
)

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Field1
FROM
	Issue1373Tests t1
ORDER BY
	t1.Id

