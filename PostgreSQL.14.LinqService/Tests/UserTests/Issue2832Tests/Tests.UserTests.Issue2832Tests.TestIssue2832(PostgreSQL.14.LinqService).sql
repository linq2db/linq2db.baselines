(106778) SELECT 
	t106778.Id = t106777.Id
FROM [DctSetpointtype(106777)] as t106777 (spt)
		LEFT JOIN (
			[VWellTree(106780)] as t106780 (t2)
				INNER JOIN [DctOu(106782)] as t106782 (tp2) ON ({t106780.ShopId?}? = {t106782.Id})
				LEFT JOIN [UacUsersDatagroup(106785)] as t106785 (cudg) ON ({t106782.Id} = {t106785.DatagroupId} AND {t106785.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(106790)] as t106790 (oudg) ON ({t106782.ParentId?}? = {t106790.DatagroupId} AND {t106790.UserId} = 150 AND {t106790.Inheritablepermission} > 0)
				INNER JOIN [Deviation(106810)] as t106810 (d) ON ({t106780.WellId?}? = {t106810.WellId})
		)  ON ({t106810.SetpointtypeId} = {t106777.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t106785.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t106790.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
