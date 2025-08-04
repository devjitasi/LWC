trigger changeProductCode on Product2 (before insert) {
List<Product2> productList = trigger.new;
for(product2 pro: productList){
    if(pro.productCode!=null && pro.productCode!=''){
        pro.productCode = 'XYZ-' + pro.productCode;
    }
}

}