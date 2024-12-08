(185603) SELECT 
	t185603.Id = t185602.Id
FROM [DctSetpointtype(185602)] as t185602 (spt)
		LEFT JOIN (
			[VWellTree(185605)] as t185605 (t2)
				INNER JOIN [DctOu(185607)] as t185607 (tp2) ON ({t185605.ShopId?}? = {t185607.Id})
				LEFT JOIN [UacUsersDatagroup(185610)] as t185610 (cudg) ON ({t185607.Id} = {t185610.DatagroupId} AND {t185610.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(185615)] as t185615 (oudg) ON ({t185607.ParentId?}? = {t185615.DatagroupId} AND {t185615.UserId} = 150 AND {t185615.Inheritablepermission} > 0)
				INNER JOIN [Deviation(185635)] as t185635 (d) ON ({t185605.WellId?}? = {t185635.WellId})
		)  ON ({t185635.SetpointtypeId} = {t185602.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t185610.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t185615.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
