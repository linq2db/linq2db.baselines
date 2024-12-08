(428113) SELECT 
	t428113.Id = t428112.Id
FROM [DctSetpointtype(428112)] as t428112 (spt)
		LEFT JOIN (
			[VWellTree(428115)] as t428115 (t2)
				INNER JOIN [DctOu(428117)] as t428117 (tp2) ON ({t428115.ShopId?}? = {t428117.Id})
				LEFT JOIN [UacUsersDatagroup(428120)] as t428120 (cudg) ON ({t428117.Id} = {t428120.DatagroupId} AND {t428120.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(428125)] as t428125 (oudg) ON ({t428117.ParentId?}? = {t428125.DatagroupId} AND {t428125.UserId} = 150 AND {t428125.Inheritablepermission} > 0)
				INNER JOIN [Deviation(428145)] as t428145 (d) ON ({t428115.WellId?}? = {t428145.WellId})
		)  ON ({t428145.SetpointtypeId} = {t428112.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t428120.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t428125.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
