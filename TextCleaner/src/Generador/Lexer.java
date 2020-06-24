/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Generador;

import java.io.File;

/**
 *
 * @author HP
 */
public class Lexer {
    public static void main(String[] args) {
        String path = "src/textcleaner/Lex.jflex";
        generarLexer(path);
    }
    
    public static void generarLexer(String path){
        File archivo = new File(path);
        jflex.Main.generate(archivo);
    }
}
