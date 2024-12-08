(703688) SELECT 
	t703688.Id = t703687.Id
FROM [DctSetpointtype(703687)] as t703687 (spt)
		LEFT JOIN (
			[VWellTree(703690)] as t703690 (t2)
				INNER JOIN [DctOu(703692)] as t703692 (tp2) ON ({t703690.ShopId?}? = {t703692.Id})
				LEFT JOIN [UacUsersDatagroup(703695)] as t703695 (cudg) ON ({t703692.Id} = {t703695.DatagroupId} AND {t703695.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(703700)] as t703700 (oudg) ON ({t703692.ParentId?}? = {t703700.DatagroupId} AND {t703700.UserId} = 150 AND {t703700.Inheritablepermission} > 0)
				INNER JOIN [Deviation(703720)] as t703720 (d) ON ({t703690.WellId?}? = {t703720.WellId})
		)  ON ({t703720.SetpointtypeId} = {t703687.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t703695.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t703700.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
