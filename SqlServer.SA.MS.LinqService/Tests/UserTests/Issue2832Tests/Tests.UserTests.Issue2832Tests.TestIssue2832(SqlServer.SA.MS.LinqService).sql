(491447) SELECT 
	t491447.Id = t491446.Id
FROM [DctSetpointtype(491446)] as t491446 (spt)
		LEFT JOIN (
			[VWellTree(491449)] as t491449 (t2)
				INNER JOIN [DctOu(491451)] as t491451 (tp2) ON ({t491449.ShopId?}? = {t491451.Id})
				LEFT JOIN [UacUsersDatagroup(491454)] as t491454 (cudg) ON ({t491451.Id} = {t491454.DatagroupId} AND {t491454.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(491459)] as t491459 (oudg) ON ({t491451.ParentId?}? = {t491459.DatagroupId} AND {t491459.UserId} = 150 AND {t491459.Inheritablepermission} > 0)
				INNER JOIN [Deviation(491479)] as t491479 (d) ON ({t491449.WellId?}? = {t491479.WellId})
		)  ON ({t491479.SetpointtypeId} = {t491446.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t491454.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t491459.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
