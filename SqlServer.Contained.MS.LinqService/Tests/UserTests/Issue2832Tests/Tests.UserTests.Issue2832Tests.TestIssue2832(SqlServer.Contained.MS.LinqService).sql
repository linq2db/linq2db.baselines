(488601) SELECT 
	t488601.Id = t488600.Id
FROM [DctSetpointtype(488600)] as t488600 (spt)
		LEFT JOIN (
			[VWellTree(488603)] as t488603 (t2)
				INNER JOIN [DctOu(488605)] as t488605 (tp2) ON ({t488603.ShopId?}? = {t488605.Id})
				LEFT JOIN [UacUsersDatagroup(488608)] as t488608 (cudg) ON ({t488605.Id} = {t488608.DatagroupId} AND {t488608.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(488613)] as t488613 (oudg) ON ({t488605.ParentId?}? = {t488613.DatagroupId} AND {t488613.UserId} = 150 AND {t488613.Inheritablepermission} > 0)
				INNER JOIN [Deviation(488633)] as t488633 (d) ON ({t488603.WellId?}? = {t488633.WellId})
		)  ON ({t488633.SetpointtypeId} = {t488600.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t488608.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t488613.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
