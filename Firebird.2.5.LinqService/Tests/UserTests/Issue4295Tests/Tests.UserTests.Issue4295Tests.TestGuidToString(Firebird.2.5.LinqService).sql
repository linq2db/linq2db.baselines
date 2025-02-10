BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Guid
SET     @Id = X'193AE7F453094EEEA74627B28C7E30F3'

INSERT INTO "InfeedAdvicePositionDTO"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	Lower(UUID_TO_CHAR("infeed"."Id"))
FROM
	"InfeedAdvicePositionDTO" "infeed"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	Lower(UUID_TO_CHAR("infeed"."Id")) LIKE '%7f4-53%' ESCAPE '~'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	Lower(UUID_TO_CHAR("infeed"."Id")) STARTING WITH '193ae'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	Lower(UUID_TO_CHAR("infeed"."Id")) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	Lower(Lower(UUID_TO_CHAR("infeed"."Id"))) STARTING WITH '293ae'

