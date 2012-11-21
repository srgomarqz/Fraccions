//
//  main.m
//  Fracciones_Ejemplo
//
//  Created by IOS 5 on 21/11/12.
//  Copyright (c) 2012 IOS 5. All rights reserved.
//

#import <Foundation/Foundation.h>
//Seccion @interface
@interface Fraccion_Ejemplo : NSObject{
    int numerador;
    int denominador;
}
-(void)imprimir;
-(void)setNumerador: (int) n;
-(void)setDenominador: (int) d;

@end
//Seccion de Implementacion

@implementation Fraccion_Ejemplo
-(void)imprimir{
    float decimales;
    decimales=(float) numerador/denominador;
    NSLog(@"%2f",decimales);
    NSLog(@"%i/%i",numerador,denominador);
}

-(void) setNumerador : (int) n {
    numerador=n;
}
-(void) setDenominador: (int) d{
    denominador=d;
}

//Sección del Programa
@end
int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
        Fraccion_Ejemplo *miFraccion;
        //Crear una Instancia en la Fraccion
        miFraccion=[Fraccion_Ejemplo alloc];
        miFraccion=[miFraccion init];
        
        //Asignacion de valores de la Fraccion
        [miFraccion setNumerador:5];
        [miFraccion setDenominador:50];
        
        //Resultado
        NSLog(@"El Resultado es :");
        [miFraccion imprimir];
        
    }
    return 0;
}

