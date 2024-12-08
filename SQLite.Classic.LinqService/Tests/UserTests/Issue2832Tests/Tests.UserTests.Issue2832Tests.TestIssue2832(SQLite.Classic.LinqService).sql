(703710) SELECT 
	t703710.Id = t703709.Id
FROM [DctSetpointtype(703709)] as t703709 (spt)
		LEFT JOIN (
			[VWellTree(703712)] as t703712 (t2)
				INNER JOIN [DctOu(703714)] as t703714 (tp2) ON ({t703712.ShopId?}? = {t703714.Id})
				LEFT JOIN [UacUsersDatagroup(703717)] as t703717 (cudg) ON ({t703714.Id} = {t703717.DatagroupId} AND {t703717.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(703722)] as t703722 (oudg) ON ({t703714.ParentId?}? = {t703722.DatagroupId} AND {t703722.UserId} = 150 AND {t703722.Inheritablepermission} > 0)
				INNER JOIN [Deviation(703742)] as t703742 (d) ON ({t703712.WellId?}? = {t703742.WellId})
		)  ON ({t703742.SetpointtypeId} = {t703709.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t703717.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t703722.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
