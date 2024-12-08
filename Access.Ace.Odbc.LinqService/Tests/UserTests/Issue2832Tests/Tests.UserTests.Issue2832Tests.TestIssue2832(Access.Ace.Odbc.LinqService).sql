(307287) SELECT 
	t307287.Id = t307286.Id
FROM [DctSetpointtype(307286)] as t307286 (spt)
		LEFT JOIN (
			(307323) SELECT 
				t307323.SetpointtypeId = t307319.SetpointtypeId
			FROM [VWellTree(307289)] as t307289 (t2)
					INNER JOIN [DctOu(307291)] as t307291 (tp2) ON ({t307289.ShopId?}? = {t307291.Id})
					LEFT JOIN [UacUsersDatagroup(307294)] as t307294 (cudg) ON ({t307291.Id} = {t307294.DatagroupId} AND {t307294.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307299)] as t307299 (oudg) ON ({t307291.ParentId?}? = {t307299.DatagroupId} AND {t307299.UserId} = 150 AND {t307299.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307319)] as t307319 (d) ON ({t307289.WellId?}? = {t307319.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(CAST(t307294.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t307299.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
		) as t307323 (t2_1) ON ({t307323.SetpointtypeId?} = {t307286.Id})
