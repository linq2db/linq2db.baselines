(239307) SELECT 
	t239307.Id = t239306.Id
FROM [DctSetpointtype(239306)] as t239306 (spt)
		LEFT JOIN (
			[VWellTree(239309)] as t239309 (t2)
				INNER JOIN [DctOu(239311)] as t239311 (tp2) ON ({t239309.ShopId?}? = {t239311.Id})
				LEFT JOIN [UacUsersDatagroup(239314)] as t239314 (cudg) ON ({t239311.Id} = {t239314.DatagroupId} AND {t239314.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(239319)] as t239319 (oudg) ON ({t239311.ParentId?}? = {t239319.DatagroupId} AND {t239319.UserId} = 150 AND {t239319.Inheritablepermission} > 0)
				INNER JOIN [Deviation(239339)] as t239339 (d) ON ({t239309.WellId?}? = {t239339.WellId})
		)  ON ({t239339.SetpointtypeId} = {t239306.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t239314.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t239319.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
