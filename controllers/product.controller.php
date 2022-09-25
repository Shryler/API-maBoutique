<?php class ProductController extends DatabaseController
{
    public function affectDataToRow(&$row, $sub_rows)
    {
        // Category_product
        if (isset($sub_rows['category'])) {
            $categorys = array_values(array_filter($sub_rows['category'], function ($item) use ($row) {
                return $item->Id_product == $row->Id_product;
            }));
            if (isset($categorys)) {  // Récupère plusieurs objets du tableau product (getAll)
                $row->category_list = count($categorys) == 1 ? array_shift($categorys) : null;
            }
        }
    }
}
