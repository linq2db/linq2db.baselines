-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11

SELECT
	infeed."Id",
	infeed."Text"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	REGEXP_LIKE(infeed."Text", 'aa.*') AND ROWNUM <= 2

