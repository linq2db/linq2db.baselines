BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue2816Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue2816Table
(
	Id   Int           NOT NULL,
	Text NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Text VarChar(1) -- String
SET     @Text = '	'

INSERT INTO Issue2816Table
(
	Id,
	Text
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Text VarChar(3) -- String
SET     @Text = ' 	 '

INSERT INTO Issue2816Table
(
	Id,
	Text
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Text VarChar(4) -- String
SET     @Text = ' 	x '

INSERT INTO Issue2816Table
(
	Id,
	Text
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.Id,
	p.Text
FROM
	Issue2816Table p
WHERE
	NOT (p.Text IS NULL OR LTRIM(p.Text, '	' || chr(10) || '' || chr(13) || '  ') = '')

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue2816Table

