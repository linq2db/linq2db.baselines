BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS WhereWithString

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS WhereWithString
(
	Id          Int           NOT NULL,
	StringValue NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @StringValue VarChar(4) -- String
SET     @StringValue = 'Str1'

INSERT INTO WhereWithString
(
	Id,
	StringValue
)
VALUES
(
	@Id,
	@StringValue
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.Id,
	x.StringValue
FROM
	WhereWithString x
WHERE
	x.StringValue LIKE '%Str%' ESCAPE '~' AND x.StringValue IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS WhereWithString

