BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3631Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3631Table"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3631Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3631Table"
			(
				"Country" VarChar(2) CHARACTER SET UNICODE_FSS NOT NULL,
				"State"   VarChar(2) CHARACTER SET UNICODE_FSS NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Country VarChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarChar(2) -- String
SET     @State = 'AL'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Country VarChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarChar(2) -- String
SET     @State = 'AZ'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Country VarChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarChar(2) -- String
SET     @State = 'CA'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Country VarChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarChar(2) -- String
SET     @State = 'FL'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Country VarChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarChar(2) -- String
SET     @State = 'IN'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Country VarChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarChar(2) -- String
SET     @State = 'OH'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Country VarChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarChar(2) -- String
SET     @State = 'NY'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Country VarChar(2) -- String
SET     @Country = 'CA'
DECLARE @State VarChar(2) -- String
SET     @State = 'AB'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Country VarChar(2) -- String
SET     @Country = 'CA'
DECLARE @State VarChar(2) -- String
SET     @State = 'ON'

INSERT INTO "Issue3631Table"
(
	"Country",
	"State"
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."Country",
	"x"."State"
FROM
	"Issue3631Table" "x"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT CAST('US' AS VARCHAR(2)) AS "Item1", CAST('CA' AS VARCHAR(2)) AS "Item2" FROM rdb$database
				UNION ALL
				SELECT CAST('US' AS VARCHAR(2)), CAST('NY' AS VARCHAR(2)) FROM rdb$database) "t1"
		WHERE
			"x"."Country" = "t1"."Item1" AND
			"t1"."Item1" IS NOT NULL AND
			"x"."State" = "t1"."Item2" AND
			"t1"."Item2" IS NOT NULL
	)

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3631Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3631Table"';
END

