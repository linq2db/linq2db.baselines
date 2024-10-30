BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4280')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4280"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4280')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4280"
			(
				"Id"           Int                                    NOT NULL,
				"SerialNumber" VarChar(255) CHARACTER SET UNICODE_FSS,
				"DeviceType"   VarChar(255) CHARACTER SET UNICODE_FSS,
				"Location"     VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Issue4280" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @SerialNumber VarChar(7) -- String
SET     @SerialNumber = 'TV00001'
DECLARE @DeviceType VarChar(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location VarChar(9) -- String
SET     @Location = 'Something'

INSERT INTO "Issue4280"
(
	"Id",
	"SerialNumber",
	"DeviceType",
	"Location"
)
VALUES
(
	@Id,
	@SerialNumber,
	@DeviceType,
	@Location
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @SerialNumber VarChar(9) -- String
SET     @SerialNumber = 'Disp00001'
DECLARE @DeviceType VarChar(7) -- String
SET     @DeviceType = 'DISPLAY'

INSERT INTO "Issue4280"
(
	"Id",
	"SerialNumber",
	"DeviceType"
)
VALUES
(
	@Id,
	@SerialNumber,
	@DeviceType
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	CASE
		WHEN "t1"."DeviceType" = 'TV' THEN '1'
		ELSE '0'
	END,
	"t1"."Id",
	"t1"."SerialNumber",
	"t1"."DeviceType",
	"t1"."Location",
	CASE
		WHEN "t1"."DeviceType" = 'DISPLAY' THEN '1'
		ELSE '0'
	END
FROM
	"Issue4280" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @SerialNumber VarChar(7) -- String
SET     @SerialNumber = 'TV00002'
DECLARE @DeviceType VarChar(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location VarChar(8) -- String
SET     @Location = 'Anything'
DECLARE @Id Integer -- Int32
SET     @Id = 2

UPDATE
	"Issue4280" "t1"
SET
	"SerialNumber" = CAST(@SerialNumber AS VARCHAR(7)),
	"DeviceType" = CAST(@DeviceType AS VARCHAR(2)),
	"Location" = CAST(@Location AS VARCHAR(8))
WHERE
	"t1"."Id" = @Id

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @SerialNumber VarChar(9) -- String
SET     @SerialNumber = 'Disp00002'
DECLARE @DeviceType VarChar(7) -- String
SET     @DeviceType = 'DISPLAY'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"Issue4280" "t1"
SET
	"SerialNumber" = CAST(@SerialNumber AS VARCHAR(9)),
	"DeviceType" = CAST(@DeviceType AS VARCHAR(7))
WHERE
	"t1"."Id" = @Id

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	CASE
		WHEN "t1"."DeviceType" = 'TV' THEN '1'
		ELSE '0'
	END,
	"t1"."Id",
	"t1"."SerialNumber",
	"t1"."DeviceType",
	"t1"."Location",
	CASE
		WHEN "t1"."DeviceType" = 'DISPLAY' THEN '1'
		ELSE '0'
	END
FROM
	"Issue4280" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4280')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4280"';
END

