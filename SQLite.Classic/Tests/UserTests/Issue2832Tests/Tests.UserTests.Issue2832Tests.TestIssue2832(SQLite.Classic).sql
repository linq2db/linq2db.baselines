(703610) SELECT 
	t703610.Id = t703609.Id
FROM [DctSetpointtype(703609)] as t703609 (spt)
		LEFT JOIN (
			[VWellTree(703612)] as t703612 (t2)
				INNER JOIN [DctOu(703614)] as t703614 (tp2) ON ({t703612.ShopId?}? = {t703614.Id})
				LEFT JOIN [UacUsersDatagroup(703617)] as t703617 (cudg) ON ({t703614.Id} = {t703617.DatagroupId} AND {t703617.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(703622)] as t703622 (oudg) ON ({t703614.ParentId?}? = {t703622.DatagroupId} AND {t703622.UserId} = 150 AND {t703622.Inheritablepermission} > 0)
				INNER JOIN [Deviation(703642)] as t703642 (d) ON ({t703612.WellId?}? = {t703642.WellId})
		)  ON ({t703642.SetpointtypeId} = {t703609.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t703617.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t703622.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
