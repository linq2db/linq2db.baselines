BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE DctSetpointtype
(
	Id Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE VWellTree
(
	ShopId Decimal     NULL,
	WellId Int         NULL
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE DctOu
(
	ParentId Int     NULL,
	Id       Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE UacUsersDatagroup
(
	Inheritablepermission Int NOT NULL,
	Permission            Int NOT NULL,
	DatagroupId           Int NOT NULL,
	UserId                Int NOT NULL,

	PRIMARY KEY (UserId, DatagroupId)
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Deviation
(
	WellId         Int NOT NULL,
	SetpointtypeId Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	spt.Id
FROM
	DctSetpointtype spt
		LEFT JOIN (
			SELECT
				d.SetpointtypeId,
				cudg.Permission,
				oudg.Inheritablepermission
			FROM
				VWellTree w
					INNER JOIN DctOu c_1 ON w.ShopId = c_1.Id
					LEFT JOIN UacUsersDatagroup oudg ON c_1.ParentId = oudg.DatagroupId AND oudg.UserId = 150 AND oudg.Inheritablepermission > 0
					LEFT JOIN UacUsersDatagroup cudg ON c_1.Id = cudg.DatagroupId AND cudg.UserId = 150
					INNER JOIN Deviation d ON w.WellId = d.WellId
		) t1 ON t1.SetpointtypeId = spt.Id AND Cast((t1.Permission + t1.Inheritablepermission) as Decimal(29, 10)) IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Deviation

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE UacUsersDatagroup

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE DctOu

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE VWellTree

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE DctSetpointtype

