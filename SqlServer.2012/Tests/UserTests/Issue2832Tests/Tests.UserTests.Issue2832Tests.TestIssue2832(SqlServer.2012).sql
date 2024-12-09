(241102) SELECT 
	t241102.Id = t241101.Id
FROM [DctSetpointtype(241101)] as t241101 (spt)
		LEFT JOIN (
			[VWellTree(241104)] as t241104 (t2)
				INNER JOIN [DctOu(241106)] as t241106 (tp2) ON ({t241104.ShopId?}? = {t241106.Id})
				LEFT JOIN [UacUsersDatagroup(241109)] as t241109 (cudg) ON ({t241106.Id} = {t241109.DatagroupId} AND {t241109.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(241114)] as t241114 (oudg) ON ({t241106.ParentId?}? = {t241114.DatagroupId} AND {t241114.UserId} = 150 AND {t241114.Inheritablepermission} > 0)
				INNER JOIN [Deviation(241134)] as t241134 (d) ON ({t241104.WellId?}? = {t241134.WellId})
		)  ON ({t241134.SetpointtypeId} = {t241101.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t241109.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t241114.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
