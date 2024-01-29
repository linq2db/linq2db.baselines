BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InfeedAdvicePositionDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InfeedAdvicePositionDTO"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InfeedAdvicePositionDTO')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "InfeedAdvicePositionDTO"
			(
				"Id" CHAR(16) CHARACTER SET OCTETS NOT NULL
			)
		';
END

BeforeExecute
-- Firebird3 Firebird
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
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	UUID_TO_CHAR("infeed"."Id")
FROM
	"InfeedAdvicePositionDTO" "infeed"

BeforeExecute
-- Firebird3 Firebird

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	UUID_TO_CHAR("infeed"."Id") LIKE '%7F4-53%' ESCAPE '~'

BeforeExecute
-- Firebird3 Firebird

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	(UUID_TO_CHAR("infeed"."Id") STARTING WITH '193AE')

BeforeExecute
-- Firebird3 Firebird

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	UUID_TO_CHAR("infeed"."Id") LIKE '%8F4-53%' ESCAPE '~'

BeforeExecute
-- Firebird3 Firebird

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	(Lower(UUID_TO_CHAR("infeed"."Id")) STARTING WITH '293AE')

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InfeedAdvicePositionDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InfeedAdvicePositionDTO"';
END

