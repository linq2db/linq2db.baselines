BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "stLinks"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "stLinks"
		(
			"inId"          Int           GENERATED ALWAYS AS IDENTITY NOT NULL,
			"inIdParent"    Int                                        NOT NULL,
			"inIdChild"     Int                                        NOT NULL,
			"inIdTypeRel"   Int                                        NOT NULL,
			"inMaxQuantity" Float                                          NULL,
			"inMinQuantity" Float                                          NULL,
			"inIdMeasure"   Int                                            NULL,
			"inIdUnit"      Int                                            NULL,
			"State"         Int                                            NULL,
			"dtModified"    timestamp                                  NOT NULL,
			"inIdOrgOwner"  Int                                            NULL,
			"dtSynchDate"   timestamp                                      NULL,
			"stGUID"        NVarChar(255)                              NOT NULL,

			CONSTRAINT "PK_stLinks" PRIMARY KEY ("inId")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "stVersions"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "stVersions"
		(
			"inId"     Int GENERATED ALWAYS AS IDENTITY NOT NULL,
			"inIdMain" Int                              NOT NULL,

			CONSTRAINT "PK_stVersions" PRIMARY KEY ("inId")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @parentId Integer(4) -- Int32
SET     @parentId = 111

SELECT
	"version_1"."inIdMain"
FROM
	(
		SELECT
			"u"."inIdChild" as "VersionId"
		FROM
			"stLinks" "u"
		WHERE
			"u"."inIdParent" = @parentId
		UNION ALL
		SELECT
			"link_1"."inIdParent" as "VersionId"
		FROM
			"stLinks" "link_1"
		WHERE
			"link_1"."inIdChild" = @parentId
	) "u_1"
		INNER JOIN "stVersions" "version_1" ON "u_1"."VersionId" = "version_1"."inId"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "stVersions"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "stLinks"';
END

