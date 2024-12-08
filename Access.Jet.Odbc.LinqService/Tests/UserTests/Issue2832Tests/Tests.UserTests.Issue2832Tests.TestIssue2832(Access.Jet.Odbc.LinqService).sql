(307316) SELECT 
	t307316.Id = t307315.Id
FROM [DctSetpointtype(307315)] as t307315 (spt)
		LEFT JOIN (
			(307352) SELECT 
				t307352.SetpointtypeId = t307348.SetpointtypeId
			FROM [VWellTree(307318)] as t307318 (t2)
					INNER JOIN [DctOu(307320)] as t307320 (tp2) ON ({t307318.ShopId?}? = {t307320.Id})
					LEFT JOIN [UacUsersDatagroup(307323)] as t307323 (cudg) ON ({t307320.Id} = {t307323.DatagroupId} AND {t307323.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307328)] as t307328 (oudg) ON ({t307320.ParentId?}? = {t307328.DatagroupId} AND {t307328.UserId} = 150 AND {t307328.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307348)] as t307348 (d) ON ({t307318.WellId?}? = {t307348.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(CAST(t307323.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t307328.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
		) as t307352 (t2_1) ON ({t307352.SetpointtypeId?} = {t307315.Id})
