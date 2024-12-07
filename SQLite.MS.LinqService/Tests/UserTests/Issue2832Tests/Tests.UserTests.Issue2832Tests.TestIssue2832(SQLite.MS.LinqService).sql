(703922) SELECT 
	t703922.Id = t703921.Id
FROM [DctSetpointtype(703921)] as t703921 (spt)
		LEFT JOIN (
			[VWellTree(703924)] as t703924 (t2)
				INNER JOIN [DctOu(703926)] as t703926 (tp2) ON ({t703924.ShopId?}? = {t703926.Id})
				LEFT JOIN [UacUsersDatagroup(703929)] as t703929 (cudg) ON ({t703926.Id} = {t703929.DatagroupId} AND {t703929.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(703934)] as t703934 (oudg) ON ({t703926.ParentId?}? = {t703934.DatagroupId} AND {t703934.UserId} = 150 AND {t703934.Inheritablepermission} > 0)
				INNER JOIN [Deviation(703954)] as t703954 (d) ON ({t703924.WellId?}? = {t703954.WellId})
		)  ON ({t703954.SetpointtypeId} = {t703921.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t703929.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t703934.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
