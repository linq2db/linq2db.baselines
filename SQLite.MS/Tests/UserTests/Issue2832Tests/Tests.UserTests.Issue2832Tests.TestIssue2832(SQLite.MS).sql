(703649) SELECT 
	t703649.Id = t703648.Id
FROM [DctSetpointtype(703648)] as t703648 (spt)
		LEFT JOIN (
			[VWellTree(703651)] as t703651 (t2)
				INNER JOIN [DctOu(703653)] as t703653 (tp2) ON ({t703651.ShopId?}? = {t703653.Id})
				LEFT JOIN [UacUsersDatagroup(703656)] as t703656 (cudg) ON ({t703653.Id} = {t703656.DatagroupId} AND {t703656.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(703661)] as t703661 (oudg) ON ({t703653.ParentId?}? = {t703661.DatagroupId} AND {t703661.UserId} = 150 AND {t703661.Inheritablepermission} > 0)
				INNER JOIN [Deviation(703681)] as t703681 (d) ON ({t703651.WellId?}? = {t703681.WellId})
		)  ON ({t703681.SetpointtypeId} = {t703648.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t703656.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t703661.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
