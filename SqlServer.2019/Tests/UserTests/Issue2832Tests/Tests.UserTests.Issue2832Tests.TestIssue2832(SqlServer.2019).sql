(246664) SELECT 
	t246664.Id = t246663.Id
FROM [DctSetpointtype(246663)] as t246663 (spt)
		LEFT JOIN (
			[VWellTree(246666)] as t246666 (t2)
				INNER JOIN [DctOu(246668)] as t246668 (tp2) ON ({t246666.ShopId?}? = {t246668.Id})
				LEFT JOIN [UacUsersDatagroup(246671)] as t246671 (cudg) ON ({t246668.Id} = {t246671.DatagroupId} AND {t246671.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(246676)] as t246676 (oudg) ON ({t246668.ParentId?}? = {t246676.DatagroupId} AND {t246676.UserId} = 150 AND {t246676.Inheritablepermission} > 0)
				INNER JOIN [Deviation(246696)] as t246696 (d) ON ({t246666.WellId?}? = {t246696.WellId})
		)  ON ({t246696.SetpointtypeId} = {t246663.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t246671.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t246676.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
