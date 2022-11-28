BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Mixed

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Mixed
(
	"Int"    Int                       NOT NULL,
	Str      NVarChar(255)                 NULL,
	"Date"   datetime year to fraction NOT NULL,
	"Double" Float                     NOT NULL,
	Bool     BOOLEAN                   NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Int_1 Integer(4) -- Int32
SET     @Int_1 = 1
DECLARE @Str VarChar(3) -- String
SET     @Str = 'One'
DECLARE @Date_1 Timestamp(16) -- DateTime
SET     @Date_1 = TO_DATE('2001-01-01', '%Y-%m-%d')
DECLARE @Double_1 Double(8)
SET     @Double_1 = 1
DECLARE @Bool Char(1) -- StringFixedLength
SET     @Bool = 't'

INSERT INTO Mixed
(
	"Int",
	Str,
	"Date",
	"Double",
	Bool
)
VALUES
(
	@Int_1,
	@Str,
	@Date_1,
	@Double_1,
	@Bool
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Int_1 Integer(4) -- Int32
SET     @Int_1 = 2
DECLARE @Str VarChar(3) -- String
SET     @Str = 'Two'
DECLARE @Date_1 Timestamp(16) -- DateTime
SET     @Date_1 = TO_DATE('2002-02-02', '%Y-%m-%d')
DECLARE @Double_1 Double(8)
SET     @Double_1 = 2
DECLARE @Bool Char(1) -- StringFixedLength
SET     @Bool = 'f'

INSERT INTO Mixed
(
	"Int",
	Str,
	"Date",
	"Double",
	Bool
)
VALUES
(
	@Int_1,
	@Str,
	@Date_1,
	@Double_1,
	@Bool
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	Mixed t
WHERE
	t."Int" > 0 AND ROW (t.Str, t."Double", t.Bool) = ROW ('One', 1, 't') AND
	EXISTS(
		SELECT
			*
		FROM
			Mixed u
		WHERE
			(2 > u."Int" OR 2 = u."Int" AND u."Date" > t."Date")
	)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Mixed

