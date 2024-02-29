BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS StringTypesTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS StringTypesTable
(
	Id             Int          NOT NULL,
	CharColumn     Char(50)         NULL,
	NCharColumn    NChar(50)        NULL,
	VarCharColumn  VarChar(50)      NULL,
	NVarCharColumn NVarChar(50)     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @CharColumn Char(10) -- StringFixedLength
SET     @CharColumn = 'someString'
DECLARE @NCharColumn Char(10) -- StringFixedLength
SET     @NCharColumn = 'someString'
DECLARE @VarCharColumn VarChar(10) -- String
SET     @VarCharColumn = 'someString'
DECLARE @NVarCharColumn VarChar(10) -- String
SET     @NVarCharColumn = 'someString'

INSERT INTO StringTypesTable
(
	Id,
	CharColumn,
	NCharColumn,
	VarCharColumn,
	NVarCharColumn
)
VALUES
(
	@Id,
	@CharColumn,
	@NCharColumn,
	@VarCharColumn,
	@NVarCharColumn
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.CharColumn,
	t.NCharColumn,
	t.VarCharColumn,
	t.NVarCharColumn
FROM
	StringTypesTable t
WHERE
	t.CharColumn LIKE 'some%' ESCAPE '~' AND
	t.NCharColumn LIKE 'some%' ESCAPE '~' AND
	t.VarCharColumn LIKE 'some%' ESCAPE '~' AND
	t.NVarCharColumn LIKE 'some%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS StringTypesTable

