BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'GuidTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "GuidTable"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'GuidTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "GuidTable"
			(
				"Id"             Int        NOT NULL,
				"Column"         BINARY(16) NOT NULL,
				"ColumnNullable" BINARY(16)
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "GuidTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,X'BC7B663D0FDE43278F925D8CC3A11D11',NULL FROM rdb$database UNION ALL
SELECT 2,X'A948600DDE214F748AC29516B287076E',X'BD3973A543234DD89F4FDF9F93E2A627' FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Column Guid
SET     @Column = X'A948600DDE214F748AC29516B287076E'
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = X'BD3973A543234DD89F4FDF9F93E2A627'

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"GuidTable" "r"
WHERE
	"r"."Column" = @Column AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"GuidTable" "r"
WHERE
	"r"."Column" = X'A948600DDE214F748AC29516B287076E' AND
	"r"."ColumnNullable" = X'BD3973A543234DD89F4FDF9F93E2A627'

BeforeExecute
-- Firebird.5 Firebird4

DELETE FROM
	"GuidTable" "t1"

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Guid
SET     @Column = X'BC7B663D0FDE43278F925D8CC3A11D11'
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = NULL

INSERT INTO "GuidTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column Guid
SET     @Column = X'A948600DDE214F748AC29516B287076E'
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = X'BD3973A543234DD89F4FDF9F93E2A627'

INSERT INTO "GuidTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"GuidTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.5 Firebird4

DELETE FROM
	"GuidTable" "t1"

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "GuidTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,X'BC7B663D0FDE43278F925D8CC3A11D11',NULL FROM rdb$database UNION ALL
SELECT 2,X'A948600DDE214F748AC29516B287076E',X'BD3973A543234DD89F4FDF9F93E2A627' FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"GuidTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.5 Firebird4

DELETE FROM
	"GuidTable" "t1"

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "GuidTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,X'BC7B663D0FDE43278F925D8CC3A11D11',NULL FROM rdb$database UNION ALL
SELECT 2,X'A948600DDE214F748AC29516B287076E',X'BD3973A543234DD89F4FDF9F93E2A627' FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"GuidTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'GuidTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "GuidTable"';
END

