BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS IsNullOrEmptyTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS IsNullOrEmptyTable
(
	Id      Int           NOT NULL,
	"Value" NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value VarChar(4) -- String
SET     @Value = 'x   '

INSERT INTO IsNullOrEmptyTable
(
	Id,
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Value VarChar(5) -- String
SET     @Value = 'xxxx '

INSERT INTO IsNullOrEmptyTable
(
	Id,
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.Id,
	p."Value"
FROM
	IsNullOrEmptyTable p
WHERE
	CHAR_LENGTH(p."Value") = 4

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS IsNullOrEmptyTable

