BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ConditionalData

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS ConditionalData
(
	Id         Int           NOT NULL,
	StringProp NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @StringProp VarChar(7) -- String
SET     @StringProp = 'String1'

INSERT INTO ConditionalData
(
	Id,
	StringProp
)
VALUES
(
	@Id,
	@StringProp
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @StringProp VarChar(7) -- String
SET     @StringProp = 'String2'

INSERT INTO ConditionalData
(
	Id,
	StringProp
)
VALUES
(
	@Id,
	@StringProp
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @StringProp VarChar -- String
SET     @StringProp = NULL

INSERT INTO ConditionalData
(
	Id,
	StringProp
)
VALUES
(
	@Id,
	@StringProp
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @StringProp VarChar(7) -- String
SET     @StringProp = 'String4'

INSERT INTO ConditionalData
(
	Id,
	StringProp
)
VALUES
(
	@Id,
	@StringProp
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5
DECLARE @StringProp VarChar(7) -- String
SET     @StringProp = 'String5'

INSERT INTO ConditionalData
(
	Id,
	StringProp
)
VALUES
(
	@Id,
	@StringProp
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6
DECLARE @StringProp VarChar -- String
SET     @StringProp = NULL

INSERT INTO ConditionalData
(
	Id,
	StringProp
)
VALUES
(
	@Id,
	@StringProp
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 7
DECLARE @StringProp VarChar(7) -- String
SET     @StringProp = 'String7'

INSERT INTO ConditionalData
(
	Id,
	StringProp
)
VALUES
(
	@Id,
	@StringProp
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 8
DECLARE @StringProp VarChar(7) -- String
SET     @StringProp = 'String8'

INSERT INTO ConditionalData
(
	Id,
	StringProp
)
VALUES
(
	@Id,
	@StringProp
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 9
DECLARE @StringProp VarChar -- String
SET     @StringProp = NULL

INSERT INTO ConditionalData
(
	Id,
	StringProp
)
VALUES
(
	@Id,
	@StringProp
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10
DECLARE @StringProp VarChar(8) -- String
SET     @StringProp = 'String10'

INSERT INTO ConditionalData
(
	Id,
	StringProp
)
VALUES
(
	@Id,
	@StringProp
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 11
DECLARE @StringProp VarChar(2) -- String
SET     @StringProp = '-1'

INSERT INTO ConditionalData
(
	Id,
	StringProp
)
VALUES
(
	@Id,
	@StringProp
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.Id,
	CASE
		WHEN x.StringProp = '1' AND x.StringProp IS NOT NULL OR x.StringProp IS NULL
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN,
	CASE
		WHEN x.StringProp = '2' AND x.StringProp IS NOT NULL THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN,
	x.StringProp,
	1,
	x.StringProp || '2',
	2
FROM
	ConditionalData x
WHERE
	CASE
		WHEN x.StringProp = '1' AND x.StringProp IS NOT NULL OR x.StringProp IS NULL
			THEN '2'
		WHEN x.StringProp = '2' AND x.StringProp IS NOT NULL THEN x.StringProp
		ELSE x.StringProp || '2'
	END LIKE '%2' ESCAPE '~' AND
	CASE
		WHEN x.StringProp = '1' AND x.StringProp IS NOT NULL OR x.StringProp IS NULL
			THEN NULL
		WHEN x.StringProp = '2' AND x.StringProp IS NOT NULL THEN 1
		ELSE 2
	END = 2 AND
	CASE
		WHEN x.StringProp = '1' AND x.StringProp IS NOT NULL OR x.StringProp IS NULL
			THEN NULL
		WHEN x.StringProp = '2' AND x.StringProp IS NOT NULL THEN 1
		ELSE 2
	END IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.StringProp
FROM
	ConditionalData t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ConditionalData

