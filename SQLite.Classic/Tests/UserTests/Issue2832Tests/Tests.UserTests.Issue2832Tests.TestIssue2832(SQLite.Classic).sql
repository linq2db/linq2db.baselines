(703632) SELECT 
	t703632.Id = t703631.Id
FROM [DctSetpointtype(703631)] as t703631 (spt)
		LEFT JOIN (
			[VWellTree(703634)] as t703634 (t2)
				INNER JOIN [DctOu(703636)] as t703636 (tp2) ON ({t703634.ShopId?}? = {t703636.Id})
				LEFT JOIN [UacUsersDatagroup(703639)] as t703639 (cudg) ON ({t703636.Id} = {t703639.DatagroupId} AND {t703639.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(703644)] as t703644 (oudg) ON ({t703636.ParentId?}? = {t703644.DatagroupId} AND {t703644.UserId} = 150 AND {t703644.Inheritablepermission} > 0)
				INNER JOIN [Deviation(703664)] as t703664 (d) ON ({t703634.WellId?}? = {t703664.WellId})
		)  ON ({t703664.SetpointtypeId} = {t703631.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t703639.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t703644.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
