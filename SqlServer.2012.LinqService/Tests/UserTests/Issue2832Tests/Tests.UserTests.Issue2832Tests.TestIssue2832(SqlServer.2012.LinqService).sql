(240648) SELECT 
	t240648.Id = t240647.Id
FROM [DctSetpointtype(240647)] as t240647 (spt)
		LEFT JOIN (
			[VWellTree(240650)] as t240650 (t2)
				INNER JOIN [DctOu(240652)] as t240652 (tp2) ON ({t240650.ShopId?}? = {t240652.Id})
				LEFT JOIN [UacUsersDatagroup(240655)] as t240655 (cudg) ON ({t240652.Id} = {t240655.DatagroupId} AND {t240655.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(240660)] as t240660 (oudg) ON ({t240652.ParentId?}? = {t240660.DatagroupId} AND {t240660.UserId} = 150 AND {t240660.Inheritablepermission} > 0)
				INNER JOIN [Deviation(240680)] as t240680 (d) ON ({t240650.WellId?}? = {t240680.WellId})
		)  ON ({t240680.SetpointtypeId} = {t240647.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t240655.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t240660.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
