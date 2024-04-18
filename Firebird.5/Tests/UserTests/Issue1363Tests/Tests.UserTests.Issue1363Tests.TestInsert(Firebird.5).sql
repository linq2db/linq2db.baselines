﻿BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1363')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1363"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1363')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1363"
			(
				"required_field" CHAR(16) CHARACTER SET OCTETS NOT NULL,
				"optional_field" CHAR(16) CHARACTER SET OCTETS
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @id Guid
SET     @id = X'BC7B663D0FDE43278F925D8CC3A11D11'

INSERT INTO "Issue1363"
(
	"required_field",
	"optional_field"
)
VALUES
(
	@id,
	(
		SELECT
			"t1"."required_field"
		FROM
			"Issue1363" "t1"
		WHERE
			"t1"."required_field" IS NULL
	)
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @id Guid
SET     @id = X'A948600DDE214F748AC29516B287076E'
DECLARE @testId Guid
SET     @testId = X'BC7B663D0FDE43278F925D8CC3A11D11'

INSERT INTO "Issue1363"
(
	"required_field",
	"optional_field"
)
VALUES
(
	@id,
	(
		SELECT
			"t1"."required_field"
		FROM
			"Issue1363" "t1"
		WHERE
			"t1"."required_field" = @testId
	)
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @id2 Guid
SET     @id2 = X'A948600DDE214F748AC29516B287076E'
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"t1"."required_field",
	"t1"."optional_field"
FROM
	"Issue1363" "t1"
WHERE
	"t1"."required_field" = @id2
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1363')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1363"';
END

