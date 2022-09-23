<?php class CategoryController extends DatabaseController
{
    public function affectDataToRow(&$row, $sub_rows)
    { // Cette méthode permet d’ajouter les propriétés appuser, theme, image, comment, tag dans l’objet article.

        // Product
        if (isset($sub_rows['product'])) {
            $products = array_values(array_filter($sub_rows['product'], function ($item) use ($row) {
                return $item->Id_category == $row->Id_category;
            }));
            if (isset($products)) {  // Récupère plusieurs objets du tableau product (getAll)
                $row->products_list = array_column($products, 'product');
            }
        }
        // Category_product
        if (isset($sub_rows['category_product'])) {
            $products = array_values(array_filter($sub_rows['category_product'], function ($item) use ($row) {
                return $item->Id_category == $row->Id_category;
            }));
            if (isset($products)) {  // Récupère plusieurs objets du tableau product (getAll)
                $row->products_list = $products;
            }
        }
    }
}
