BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	m_1."SectorId",
	a_User."UserId"
FROM
	"SectorDTO" m_1
		INNER JOIN UPS d ON m_1."SectorId" = d."SectorId"
		INNER JOIN "UserPositionDTO" a_UserPosition ON d."UserPositionId" = a_UserPosition."UserPositionId"
		INNER JOIN "UserDTO" a_User ON a_UserPosition."UserId" = a_User."UserId"
WHERE
	a_UserPosition."PositionId" = 1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."SectorId"
FROM
	"SectorDTO" x

