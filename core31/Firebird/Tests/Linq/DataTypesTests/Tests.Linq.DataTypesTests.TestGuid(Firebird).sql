BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'GuidTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "GuidTable"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'GuidTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "GuidTable"
			(
				"ColumnNullable" CHAR(16) CHARACTER SET OCTETS,
				"Column"         CHAR(16) CHARACTER SET OCTETS NOT NULL,
				"Id"             Int                           NOT NULL
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "GuidTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
SELECT NULL,X'BC7B663D0FDE43278F925D8CC3A11D11',1 FROM rdb$database UNION ALL
SELECT X'BD3973A543234DD89F4FDF9F93E2A627',X'A948600DDE214F748AC29516B287076E',2 FROM rdb$database

BeforeExecute
-- Firebird
DECLARE @Column_1 Guid
SET     @Column_1 = X'A948600DDE214F748AC29516B287076E'
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = X'BD3973A543234DD89F4FDF9F93E2A627'

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"GuidTable" "r"
WHERE
	"r"."Column" = @Column_1 AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
-- Firebird

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"GuidTable" "r"
WHERE
	"r"."Column" = X'A948600DDE214F748AC29516B287076E' AND
	"r"."ColumnNullable" = X'BD3973A543234DD89F4FDF9F93E2A627'

BeforeExecute
-- Firebird

DELETE FROM
	"GuidTable" "t1"

BeforeExecute
-- Firebird
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = NULL
DECLARE @Column_1 Guid
SET     @Column_1 = X'BC7B663D0FDE43278F925D8CC3A11D11'
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "GuidTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Firebird
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = X'BD3973A543234DD89F4FDF9F93E2A627'
DECLARE @Column_1 Guid
SET     @Column_1 = X'A948600DDE214F748AC29516B287076E'
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "GuidTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Firebird

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"GuidTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

DELETE FROM
	"GuidTable" "t1"

BeforeExecute
-- Firebird

INSERT INTO "GuidTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
SELECT NULL,X'BC7B663D0FDE43278F925D8CC3A11D11',1 FROM rdb$database UNION ALL
SELECT X'BD3973A543234DD89F4FDF9F93E2A627',X'A948600DDE214F748AC29516B287076E',2 FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"GuidTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

DELETE FROM
	"GuidTable" "t1"

BeforeExecute
-- Firebird

INSERT INTO "GuidTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
SELECT NULL,X'BC7B663D0FDE43278F925D8CC3A11D11',1 FROM rdb$database UNION ALL
SELECT X'BD3973A543234DD89F4FDF9F93E2A627',X'A948600DDE214F748AC29516B287076E',2 FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"GuidTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'GuidTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "GuidTable"';
END

