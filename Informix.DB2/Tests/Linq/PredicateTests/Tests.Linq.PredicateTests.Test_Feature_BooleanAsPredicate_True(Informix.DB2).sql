BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS FeatureTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS FeatureTable
(
	Id       Int     NOT NULL,
	One      Int         NULL,
	Zero     Int         NULL,
	"Null"   Int         NULL,
	"True"   BOOLEAN     NULL,
	"False"  BOOLEAN     NULL,
	BoolNull BOOLEAN     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @One Integer(4) -- Int32
SET     @One = 1
DECLARE @Zero Integer(4) -- Int32
SET     @Zero = 0
DECLARE @Null Integer -- Int32
SET     @Null = NULL
DECLARE @True Char(1) -- StringFixedLength
SET     @True = 't'
DECLARE @False Char(1) -- StringFixedLength
SET     @False = 'f'
DECLARE @BoolNull SmallInt -- Boolean
SET     @BoolNull = NULL

INSERT INTO FeatureTable
(
	Id,
	One,
	Zero,
	"Null",
	"True",
	"False",
	BoolNull
)
VALUES
(
	@Id,
	@One,
	@Zero,
	@Null,
	@True,
	@False,
	@BoolNull
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	r."True"

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS FeatureTable

