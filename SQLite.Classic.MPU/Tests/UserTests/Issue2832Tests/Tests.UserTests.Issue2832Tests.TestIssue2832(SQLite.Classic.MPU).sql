(426152) SELECT 
	t426152.Id = t426151.Id
FROM [DctSetpointtype(426151)] as t426151 (spt)
		LEFT JOIN (
			[VWellTree(426154)] as t426154 (t2)
				INNER JOIN [DctOu(426156)] as t426156 (tp2) ON ({t426154.ShopId?}? = {t426156.Id})
				LEFT JOIN [UacUsersDatagroup(426159)] as t426159 (cudg) ON ({t426156.Id} = {t426159.DatagroupId} AND {t426159.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(426164)] as t426164 (oudg) ON ({t426156.ParentId?}? = {t426164.DatagroupId} AND {t426164.UserId} = 150 AND {t426164.Inheritablepermission} > 0)
				INNER JOIN [Deviation(426184)] as t426184 (d) ON ({t426154.WellId?}? = {t426184.WellId})
		)  ON ({t426184.SetpointtypeId} = {t426151.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t426159.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t426164.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
