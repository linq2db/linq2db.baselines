SELECT
	spt."Id"
FROM
	"DctSetpointtype" spt
		LEFT JOIN "VWellTree" t2
			INNER JOIN "DctOu" tp2 ON t2."ShopId" = tp2."Id"
			LEFT JOIN "UacUsersDatagroup" cudg ON tp2."Id" = cudg."DatagroupId" AND cudg."UserId" = 150
			LEFT JOIN "UacUsersDatagroup" oudg ON tp2."ParentId" = oudg."DatagroupId" AND oudg."UserId" = 150 AND oudg."Inheritablepermission" > 0
			INNER JOIN "Deviation" d ON t2."WellId" = d."WellId"
		ON d."SetpointtypeId" = spt."Id" AND UTILS.GREATESTNOTNULL3(cudg."Permission"::decimal, oudg."Inheritablepermission"::decimal, NULL) IS NOT NULL

