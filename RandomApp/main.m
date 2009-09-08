//
//  main.m
//  RandomApp-Macruby
//
//  Created by Ben Schwarz on 8/09/09.
//  Copyright Ben Schwarz Pty Ltd 2009. All rights reserved.
//

#import <MacRuby/MacRuby.h>

int main(int argc, char *argv[])
{
    return macruby_main("rb_main.rb", argc, argv);
}
