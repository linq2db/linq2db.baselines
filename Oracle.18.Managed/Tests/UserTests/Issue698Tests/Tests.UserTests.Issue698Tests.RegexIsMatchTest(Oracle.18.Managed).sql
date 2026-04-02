-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Text Varchar2(4) -- String
SET     @Text = 'abcd'

INSERT INTO "InfeedAdvicePositionDTO"
(
	"Id",
	"Text"
)
VALUES
(
	:Id,
	:Text
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Text Varchar2(6) -- String
SET     @Text = 'aabbcc'

INSERT INTO "InfeedAdvicePositionDTO"
(
	"Id",
	"Text"
)
VALUES
(
	:Id,
	:Text
)

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	infeed."Id",
	infeed."Text"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	REGEXP_LIKE(infeed."Text", 'aa.*')
FETCH NEXT 2 ROWS ONLY

