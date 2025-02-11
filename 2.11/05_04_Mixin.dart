abstract class BaseChocolate {
  bool hasChocolate = true;
}

// Mixin
mixin HasNuts {
  bool hasHazelnuts = true;
  bool hasAlmonds = true;
}

mixin HasRice {
  bool hasRice = true;
}

// Mixin을 사용한 클래스, with 키워드로 Mixin을 추가
class ChocolateBar extends BaseChocolate with HasNuts, HasRice {
  List<String> ingredients = [];
  
  ChocolateBar() {
    if (hasChocolate) ingredients.add('Chocolate');
    if (hasHazelnuts) ingredients.add('Hazelnuts');
    if (hasAlmonds) ingredients.add('Almonds');
    if (hasRice) ingredients.add('Rice');
  }

  List<String> getIngredients() {
    return ingredients;
  }

  void displayIngredients() {
    print('Ingredients: ${ingredients.join(', ')}');
  }
}
void main() {
  var myChocolate = ChocolateBar();
  myChocolate.displayIngredients();
}